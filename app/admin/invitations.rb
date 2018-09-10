ActiveAdmin.register Invitation do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
@name = "Invitación"
menu false
menu false
orderable
breadcrumb do
    [
      link_to('Invitaciones', '/admin/invitations')
    ]
end
config.action_items.delete_if {|item| item.name == :edit && item.display_on?(:show) }

controller do
  def permitted_params
    params.permit!
  end
  def update
    update! do |format, invitation|
      format.html { redirect_to edit_admin_invitation_path(resource) }
      format.json { render json: edit_admin_invitation_path(resource) }
    end
    
  end
  def lock
    lock! do |format, invitation|
      
      
    end
  end
  
  def quick_events
    # First, instantiate the Mailgun Client with your API key
    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    
    # Define the domain you wish to query
    domain = ENV['MAILGUN_DOMAIN']
    
    # Issue the get request
    result = mg_client.get("#{domain}/events", {:event => 'delivered'})
    render json: result
  end
  
  def quick_whatsapp
      @invitation = Invitation.find(params[:id])
      @guests = @invitation.guests
      
      render layout: false 
  end
  
  def quick_send
      @invitation = Invitation.find(params[:id])
      @guests = @invitation.guests
      
      render layout: false 
  end
  
  def quick_send_mails
      #@invitation = Invitation.find(params[:id])
      #@guests = @invitation.guests
      #render layout: false
      #UserNotifier.send_signup_email(@guest).deliver
      
      
      @guests = params[:guests]
      @invitation = Invitation.find(params[:id])
      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe
      @results = {}
      @guests.each do |key, value|
        @g = Guest.find(key)

        
        InvitationMailer.send_invitation_email(@g, @invitados).deliver
        #@results.store(@g.email,result)
      end
      render 'quick_send_response.js', layout: false
      #render @html
      #redirect_to admin_invitation_path(params[:id])

  end
  def quick_sort
      @invitation = Invitation.find(params[:id])
      render layout: false
  end
  
  def quick_remove
      @invitation = Invitation.find(params[:id])
      @guest = Guest.find(params[:guest_id]).destroy
      redirect_to admin_invitation_path(@invitation) 
  end
  def quick_add
      @invitation = Invitation.find(params[:id])
      @guest = Guest.new()
      @guest.invitation = @invitation
      render layout: false
  end
  
  def quick_create
      @invitation = Invitation.find(params[:id])
      @guest = Guest.new(permitted_params[:guest])
      @guest.invitation = @invitation
      @guest.save
      render 'quick_response.js', layout: false
  end
  
end


action_item only: :show do
  link_to 'Enviar por Email', admin_invitation_quick_send_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }
end

action_item :view, only: :show do
  link_to 'Enviar por Whatsapp', admin_invitation_quick_whatsapp_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }
end


index :title => 'Invitaciones' do
    column "Título" do |invitation|
        invitation.title
    end
    column "Invitados" do |invitation|
        invitation.guests.collect{|t| t.name}.join(', ').html_safe
    end
    
    column "Cantidad de Invitados", :sortable do |invitation|
        invitation.guests.count
    end
    column do |invitation|
        link_to "Editar", admin_invitation_path(invitation)
    end
    
end

show do |invitation|
  team = Invitation.find(params[:id])

  panel "Invitación" do
    attributes_table_for team do
      row "Título" do
        best_in_place invitation, :title, as: :input, url: [:admin, invitation], :place_holder => "Clic para editar"
      end
    end
  end

  panel "Invitados" do
        div class: 'button-row' do
          link_to 'Agregar Invitado', admin_guest_quick_add_path, class: 'fancybox button', data: { 'fancybox-type' => 'ajax' }
        end
        
        table_for invitation.guests, {:class => 'index_table'} do |guests|
            column "Nombre del Invitado" do |guest|
                best_in_place guest, :name, as: :input, url: [:admin, invitation,guest], :place_holder => "Clic para agregar",:required => true
            end 
            column "Email" do |guest|
                best_in_place guest, :email, as: :input, url: [:admin, invitation,guest], :place_holder => "Clic para agregar"
            end
            column "Teléfono móvil" do |guest|
                best_in_place guest, :phone, as: :input, url: [:admin, invitation,guest], :place_holder => "Clic para agregar"
            end
            column max_width: "200px", min_width: "100px" do |guest|
                link_to "Delete", admin_guest_quick_remove_path(resource.id,guest.id), data: { confirm: 'Quitar al Invitado de la lista?' }, :class => "member_link delete_link"
            end
        end

      end

  

    # renders app/views/admin/posts/_some_partial.html.erb
    # render 'send', { invitation: invitation }

end
#sidebar "Estado de Envío", only: :edit do
#  render 'status', { invitation: invitation }
#end
form :title => 'Editar Invitación' do |f|
    
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :title , label: "Título de la Invitación"
      f.has_many :guests, sortable: :sort_order, heading: false, allow_destroy: true, new_record: 'Agregar Invitado' do |a|
        a.input :name, label: "Nombre del Invitado"
        a.input :email, label: "Email del Invitado"
        a.input :phone, label: "Teléfono movil del Invitado"
      end
    end
    
    f.actions
    #image_tag @invitation.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

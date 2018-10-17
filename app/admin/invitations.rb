ActiveAdmin.register Invitation do

@name = "Invitación"

breadcrumb do
  if request.params[:action] == "new"
    [
      link_to('Inicio', admin_dashboard_path),
      link_to('Invitaciones', '/admin/invitations')
    ]
  elsif request.params[:action] == "edit"
    [
      link_to('Inicio', admin_dashboard_path),
      link_to('Invitaciones', '/admin/invitations'),
      resource.title
    ]
  else
    [
      link_to('Inicio', admin_dashboard_path)
    ]
  end
end

menu false
orderable

actions :index, :new, :create, :update, :edit

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
      render 'quick_response.js', layout: false, invitation: @invitation, guest: @guest
  end
  
end


action_item only: :edit do
  link_to 'Enviar por Email', admin_invitation_quick_send_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }
end
action_item :view, only: :edit do
  link_to 'Enviar por Whatsapp', admin_invitation_quick_whatsapp_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }
end
action_item :view, only: :edit do
  link_to 'Compartir en Facebook', "https://www.giypablo.com/invitations/" + resource.id.to_s, class: 'facebook-share'
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
        link_to "Editar", edit_admin_invitation_path(invitation)
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

form do |f|
    
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

  end
end

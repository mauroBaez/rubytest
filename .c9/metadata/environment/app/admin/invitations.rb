{"changed":true,"filter":false,"title":"invitations.rb","tooltip":"/app/admin/invitations.rb","value":"ActiveAdmin.register Invitation do\n# See permitted parameters documentation:\n# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters\n#\n# permit_params :list, :of, :attributes, :on, :model\n#\n# or\n#\n# permit_params do\n#   permitted = [:permitted, :attributes]\n#   permitted << :other if params[:action] == 'create' && current_user.admin?\n#   permitted\n# end\n@name = \"Invitación\"\nmenu false\nmenu false\norderable\nbreadcrumb do\n    [\n      link_to('Invitaciones', '/admin/invitations')\n    ]\nend\nconfig.action_items.delete_if {|item| item.name == :edit && item.display_on?(:show) }\n\ncontroller do\n  def permitted_params\n    params.permit!\n  end\n  def update\n    update! do |format, invitation|\n      format.html { redirect_to edit_admin_invitation_path(resource) }\n      format.json { render json: edit_admin_invitation_path(resource) }\n    end\n    \n  end\n  def lock\n    lock! do |format, invitation|\n      \n      \n    end\n  end\n  \n  def quick_events\n    # First, instantiate the Mailgun Client with your API key\n    mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']\n    \n    # Define the domain you wish to query\n    domain = ENV['MAILGUN_DOMAIN']\n    \n    # Issue the get request\n    result = mg_client.get(\"#{domain}/events\", {:event => 'delivered'})\n    render html: result.to_s\n  end\n  \n  def quick_whatsapp\n      @invitation = Invitation.find(params[:id])\n      @guests = @invitation.guests\n      \n      render layout: false \n  end\n  \n  def quick_send\n      @invitation = Invitation.find(params[:id])\n      @guests = @invitation.guests\n      \n      render layout: false \n  end\n  \n  def quick_send_mails\n      #@invitation = Invitation.find(params[:id])\n      #@guests = @invitation.guests\n      #render layout: false\n      #UserNotifier.send_signup_email(@guest).deliver\n      \n      \n      @guests = params[:guests]\n      @invitation = Invitation.find(params[:id])\n      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe\n      @results = {}\n      @guests.each do |key, value|\n        @g = Guest.find(key)\n\n        \n        InvitationMailer.send_invitation_email(@g, @invitados).deliver\n        #@results.store(@g.email,result)\n      end\n      render 'quick_send_response.js', layout: false\n      #render @html\n      #redirect_to admin_invitation_path(params[:id])\n\n  end\n  def quick_sort\n      @invitation = Invitation.find(params[:id])\n      render layout: false\n  end\n  \n  def quick_remove\n      @invitation = Invitation.find(params[:id])\n      @guest = Guest.find(params[:guest_id]).destroy\n      redirect_to admin_invitation_path(@invitation) \n  end\n  def quick_add\n      @invitation = Invitation.find(params[:id])\n      @guest = Guest.new()\n      @guest.invitation = @invitation\n      render layout: false\n  end\n  \n  def quick_create\n      @invitation = Invitation.find(params[:id])\n      @guest = Guest.new(permitted_params[:guest])\n      @guest.invitation = @invitation\n      @guest.save\n      render 'quick_response.js', layout: false\n  end\n  \nend\n\n\naction_item only: :show do\n  link_to 'Enviar por Email', admin_invitation_quick_send_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }\nend\n\naction_item :view, only: :show do\n  link_to 'Enviar por Whatsapp', admin_invitation_quick_whatsapp_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }\nend\n\n\nindex :title => 'Invitaciones' do\n    column \"Título\" do |invitation|\n        invitation.title\n    end\n    column \"Invitados\" do |invitation|\n        invitation.guests.collect{|t| t.name}.join(', ').html_safe\n    end\n    \n    column \"Cantidad de Invitados\", :sortable do |invitation|\n        invitation.guests.count\n    end\n    column do |invitation|\n        link_to \"Editar\", admin_invitation_path(invitation)\n    end\n    \nend\n\nshow do |invitation|\n  team = Invitation.find(params[:id])\n\n  panel \"Invitación\" do\n    attributes_table_for team do\n      row \"Título\" do\n        best_in_place invitation, :title, as: :input, url: [:admin, invitation], :place_holder => \"Clic para editar\"\n      end\n    end\n  end\n\n  panel \"Invitados\" do\n        div class: 'button-row' do\n          link_to 'Agregar Invitado', admin_guest_quick_add_path, class: 'fancybox button', data: { 'fancybox-type' => 'ajax' }\n        end\n        \n        table_for invitation.guests, {:class => 'index_table'} do |guests|\n            column \"Nombre del Invitado\" do |guest|\n                best_in_place guest, :name, as: :input, url: [:admin, invitation,guest], :place_holder => \"Clic para agregar\",:required => true\n            end \n            column \"Email\" do |guest|\n                best_in_place guest, :email, as: :input, url: [:admin, invitation,guest], :place_holder => \"Clic para agregar\"\n            end\n            column \"Teléfono móvil\" do |guest|\n                best_in_place guest, :phone, as: :input, url: [:admin, invitation,guest], :place_holder => \"Clic para agregar\"\n            end\n            column max_width: \"200px\", min_width: \"100px\" do |guest|\n                link_to \"Delete\", admin_guest_quick_remove_path(resource.id,guest.id), data: { confirm: 'Quitar al Invitado de la lista?' }, :class => \"member_link delete_link\"\n            end\n        end\n\n      end\n\n  \n\n    # renders app/views/admin/posts/_some_partial.html.erb\n    # render 'send', { invitation: invitation }\n\nend\n#sidebar \"Estado de Envío\", only: :edit do\n#  render 'status', { invitation: invitation }\n#end\nform :title => 'Editar Invitación' do |f|\n    \n    f.semantic_errors # shows errors on :base\n    f.inputs do\n      f.input :title , label: \"Título de la Invitación\"\n      f.has_many :guests, sortable: :sort_order, heading: false, allow_destroy: true, new_record: 'Agregar Invitado' do |a|\n        a.input :name, label: \"Nombre del Invitado\"\n        a.input :email, label: \"Email del Invitado\"\n        a.input :phone, label: \"Teléfono movil del Invitado\"\n      end\n    end\n    \n    f.actions\n    #image_tag @invitation.cover_photo_url(:thumbnail).to_s, width: 300, class: \"img-thumbnail file-upload-preview\", id: \"preview-cover-photo\"\n    \n  end\nend\n","undoManager":{"mark":22,"position":24,"stack":[[{"start":{"row":118,"column":0},"end":{"row":120,"column":3},"action":"remove","lines":["sidebar \"Estado de Envío\", only: :show do","  render 'send', { invitation: invitation }","end"],"id":2},{"start":{"row":117,"column":0},"end":{"row":118,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":130,"column":12},"end":{"row":130,"column":26},"action":"remove","lines":["dropdown: true"],"id":3},{"start":{"row":130,"column":11},"end":{"row":130,"column":12},"action":"remove","lines":[" "]}],[{"start":{"row":130,"column":4},"end":{"row":130,"column":11},"action":"remove","lines":["actions"],"id":4},{"start":{"row":130,"column":4},"end":{"row":130,"column":5},"action":"insert","lines":["c"]},{"start":{"row":130,"column":5},"end":{"row":130,"column":6},"action":"insert","lines":["o"]},{"start":{"row":130,"column":6},"end":{"row":130,"column":7},"action":"insert","lines":["l"]},{"start":{"row":130,"column":7},"end":{"row":130,"column":8},"action":"insert","lines":["u"]},{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"insert","lines":["n"]},{"start":{"row":130,"column":9},"end":{"row":130,"column":10},"action":"insert","lines":["m"]}],[{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"remove","lines":["n"],"id":5},{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"remove","lines":["m"]}],[{"start":{"row":130,"column":8},"end":{"row":130,"column":9},"action":"insert","lines":["m"],"id":6},{"start":{"row":130,"column":9},"end":{"row":130,"column":10},"action":"insert","lines":["n"]}],[{"start":{"row":131,"column":8},"end":{"row":131,"column":12},"action":"remove","lines":["item"],"id":8},{"start":{"row":131,"column":8},"end":{"row":131,"column":15},"action":"insert","lines":["link_to"]}],[{"start":{"row":40,"column":5},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":9},{"start":{"row":41,"column":0},"end":{"row":41,"column":2},"action":"insert","lines":["  "]},{"start":{"row":41,"column":2},"end":{"row":42,"column":0},"action":"insert","lines":["",""]},{"start":{"row":42,"column":0},"end":{"row":42,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":42,"column":2},"end":{"row":47,"column":5},"action":"insert","lines":["def lock","    lock! do |format, invitation|","      ","      ","    end","  end"],"id":10}],[{"start":{"row":43,"column":4},"end":{"row":46,"column":7},"action":"remove","lines":["lock! do |format, invitation|","      ","      ","    end"],"id":11}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":10},"action":"remove","lines":["lock"],"id":14},{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["e"]},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["v"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["e"]},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["n"]},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["t"]},{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["s"]}],[{"start":{"row":43,"column":4},"end":{"row":50,"column":67},"action":"insert","lines":["# First, instantiate the Mailgun Client with your API key","mg_client = Mailgun::Client.new 'your-secret-api-key'","","# Define the domain you wish to query","domain = 'example.com'","","# Issue the get request","result = mg_client.get(\"#{domain}/events\", {:event => 'delivered'})"],"id":15}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "],"id":16},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":44,"column":0},"end":{"row":44,"column":2},"action":"insert","lines":["  "],"id":17},{"start":{"row":45,"column":0},"end":{"row":45,"column":2},"action":"insert","lines":["  "]},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"insert","lines":["  "]},{"start":{"row":48,"column":0},"end":{"row":48,"column":2},"action":"insert","lines":["  "]},{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "]},{"start":{"row":50,"column":0},"end":{"row":50,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":44,"column":36},"end":{"row":44,"column":57},"action":"remove","lines":["'your-secret-api-key'"],"id":18},{"start":{"row":44,"column":36},"end":{"row":44,"column":58},"action":"insert","lines":["ENV['MAILGUN_API_KEY']"]}],[{"start":{"row":47,"column":13},"end":{"row":47,"column":26},"action":"remove","lines":["'example.com'"],"id":19},{"start":{"row":47,"column":13},"end":{"row":47,"column":35},"action":"insert","lines":["ENV['MAILGUN_API_KEY']"]}],[{"start":{"row":47,"column":26},"end":{"row":47,"column":33},"action":"remove","lines":["API_KEY"],"id":20},{"start":{"row":47,"column":26},"end":{"row":47,"column":27},"action":"insert","lines":["D"]},{"start":{"row":47,"column":27},"end":{"row":47,"column":28},"action":"insert","lines":["O"]},{"start":{"row":47,"column":28},"end":{"row":47,"column":29},"action":"insert","lines":["M"]},{"start":{"row":47,"column":29},"end":{"row":47,"column":30},"action":"insert","lines":["A"]},{"start":{"row":47,"column":30},"end":{"row":47,"column":31},"action":"insert","lines":["I"]},{"start":{"row":47,"column":31},"end":{"row":47,"column":32},"action":"insert","lines":["N"]}],[{"start":{"row":114,"column":2},"end":{"row":116,"column":5},"action":"remove","lines":["def compute_url_from_resource","      render 'klklklklklk'","  end"],"id":21},{"start":{"row":114,"column":0},"end":{"row":114,"column":2},"action":"remove","lines":["  "]},{"start":{"row":113,"column":5},"end":{"row":114,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":42,"column":6},"end":{"row":42,"column":7},"action":"insert","lines":["q"],"id":22},{"start":{"row":42,"column":7},"end":{"row":42,"column":8},"action":"insert","lines":["u"]},{"start":{"row":42,"column":8},"end":{"row":42,"column":9},"action":"insert","lines":["i"]},{"start":{"row":42,"column":9},"end":{"row":42,"column":10},"action":"insert","lines":["c"]},{"start":{"row":42,"column":10},"end":{"row":42,"column":11},"action":"insert","lines":["k"]}],[{"start":{"row":42,"column":11},"end":{"row":42,"column":12},"action":"insert","lines":["_"],"id":23}],[{"start":{"row":50,"column":71},"end":{"row":51,"column":0},"action":"insert","lines":["",""],"id":24},{"start":{"row":51,"column":0},"end":{"row":51,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":51,"column":4},"end":{"row":51,"column":53},"action":"insert","lines":["render json: edit_admin_invitation_path(resource)"],"id":25}],[{"start":{"row":51,"column":17},"end":{"row":51,"column":53},"action":"remove","lines":["edit_admin_invitation_path(resource)"],"id":26},{"start":{"row":51,"column":17},"end":{"row":51,"column":23},"action":"insert","lines":["result"]}],[{"start":{"row":51,"column":11},"end":{"row":51,"column":15},"action":"remove","lines":["json"],"id":27},{"start":{"row":51,"column":11},"end":{"row":51,"column":12},"action":"insert","lines":["h"]},{"start":{"row":51,"column":12},"end":{"row":51,"column":13},"action":"insert","lines":["t"]},{"start":{"row":51,"column":13},"end":{"row":51,"column":14},"action":"insert","lines":["m"]},{"start":{"row":51,"column":14},"end":{"row":51,"column":15},"action":"insert","lines":["l"]}],[{"start":{"row":51,"column":23},"end":{"row":51,"column":24},"action":"insert","lines":["."],"id":28},{"start":{"row":51,"column":24},"end":{"row":51,"column":25},"action":"insert","lines":["t"]},{"start":{"row":51,"column":25},"end":{"row":51,"column":26},"action":"insert","lines":["o"]}],[{"start":{"row":51,"column":24},"end":{"row":51,"column":26},"action":"remove","lines":["to"],"id":29},{"start":{"row":51,"column":24},"end":{"row":51,"column":28},"action":"insert","lines":["to_s"]}]]},"ace":{"folds":[],"scrolltop":600,"scrollleft":0,"selection":{"start":{"row":51,"column":28},"end":{"row":51,"column":28},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":39,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1536609544619}
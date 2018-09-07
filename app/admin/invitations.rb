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
      @logo = ActionController::Base.helpers.asset_path("logo.png")
      @fondo = ActionController::Base.helpers.asset_path("fondo-mail.jpg")
      @calendar = ActionController::Base.helpers.asset_path("calendar.png")
      @guests = params[:guests]
      @invitation = Invitation.find(params[:id])
      @invitados = @invitation.guests.collect{|t| t.name}.join('<br>').html_safe
      @results = {}
      @guests.each do |key, value|
        @g = Guest.find(key)

        @html = '

<!DOCTYPE html>
<html>
<head>
<title>A Responsive Email Template</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<style type="text/css">
    /* CLIENT-SPECIFIC STYLES */
    body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} /* Prevent WebKit and Windows mobile 

changing default text sizes */
    table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} /* Remove spacing between tables in Outlook 2007 and up */
    img{-ms-interpolation-mode: bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */

    /* RESET STYLES */
    img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}
    table{border-collapse: collapse !important;}
    body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}

    /* iOS BLUE LINKS */
    a[x-apple-data-detectors] {
        color: inherit !important;
        text-decoration: none !important;
        font-size: inherit !important;
        font-family: inherit !important;
        font-weight: inherit !important;
        line-height: inherit !important;
    }

    /* MOBILE STYLES */
    @media screen and (max-width: 525px) {

        /* ALLOWS FOR FLUID TABLES */
        .wrapper {
          width: 100% !important;
        	max-width: 100% !important;
        }

        /* ADJUSTS LAYOUT OF LOGO IMAGE */
        .logo img {
          margin: 0 auto !important;
        }

        /* USE THESE CLASSES TO HIDE CONTENT ON MOBILE */
        .mobile-hide {
          display: none !important;
        }

        .img-max {
          max-width: 100% !important;
          width: 100% !important;
          height: auto !important;
        }

        /* FULL-WIDTH TABLES */
        .responsive-table {
          width: 100% !important;
        }

        /* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE */
        .padding {
          padding: 10px 5% 15px 5% !important;
        }

        .padding-meta {
          padding: 30px 5% 0px 5% !important;
          text-align: center;
        }

        .no-padding {
          padding: 0 !important;
        }

        .section-padding {
          padding: 50px 15px 50px 15px !important;
        }

        /* ADJUST BUTTONS ON MOBILE */
        .mobile-button-container {
            margin: 0 auto;
            width: 100% !important;
        }

        .mobile-button {
            padding: 15px !important;
            border: 0 !important;
            font-size: 16px !important;
            display: block !important;
        }

    }

    /* ANDROID CENTER FIX */
    div[style*="margin: 16px 0;"] { margin: 0 !important; }
</style>
</head>
<body style="margin: 0 !important; padding: 0 !important;">

<!-- HIDDEN PREHEADER TEXT -->
<div style="display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Helvetica, Arial, sans-serif; 

max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;">
    Entice the open with some amazing preheader text. Use a little mystery and get those subscribers to read through...
</div>

<!-- HEADER -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td bgcolor="#e8e8e8" align="center">
            <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
            <tr>
            <td align="center" valign="top" width="500">
            <![endif]-->
            
            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </td>
    </tr>
    <tr>
        <td bgcolor="#ffffff" align="center" style="padding: 70px 15px 70px 15px;" class="section-padding">
            <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
            <tr>
            <td align="center" valign="top" width="500">
            <![endif]-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 780px;" class="responsive-

table">
                <tr>
                    <td>
                        <!-- HERO IMAGE -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              	<td class="padding" align="center">
                                    <a href="http://litmus.com" target="_blank">
                                        <img src="https://www.giypablo.com' +  @fondo + '" width="780" height="auto" border="0" 

alt="Insert alt text here" style="display: block; color: #666666;  font-family: Helvetica, arial, sans-serif; font-size: 

16px;" class="img-max">
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <!-- COPY -->
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td align="center" style="font-size: 25px; font-family: Helvetica, Arial, sans-

serif; color: #cd30a6; padding-top: 30px;" class="padding">Invitaci&oacute;n a Nuestro Casamiento</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="font-size: 25px; font-family: Helvetica, Arial, sans-

serif; color: #cd30a6; padding-top: 30px;font-weight:bold" class="padding">' +  @invitados + '</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="padding: 20px 0 0 0; font-size: 16px; line-height: 

25px; font-family: Helvetica, Arial, sans-serif; color: #666666;" class="padding">Es nuestro deseo que esten junto a 

nosotros para compartir este maravilloso momento de nuestras vidas.... 

</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <!-- BULLETPROOF BUTTON -->
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td align="center" style="padding-top: 25px;" class="padding">
                                                <table border="0" cellspacing="0" cellpadding="0" class="mobile-button-

container">
                                                    <tr>
                                                    	<td align="center" style="border-radius: 3px;" bgcolor="#984ecb"><a 

href="https://www.giypablo.com/invitations/' + @g.invitation_id.to_s + '" target="_blank" style="font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; 

text-decoration: none; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid 

#984ecb; display: inline-block;" class="mobile-button">Ver Invitaci&oacute;n &rarr;</a></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </td>
    </tr>
    <tr>
        <td bgcolor="#e8e8e8" align="center" style="padding: 70px 15px 70px 15px;" class="section-padding">
            <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
            <tr>
            <td align="center" valign="top" width="500">
            <![endif]-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="padding-bottom: 20px; max-width: 500px;" 

class="responsive-table">
                <!-- TITLE -->
                <tr>
                    <td align="center" style="padding: 0 0 10px 0; font-size: 25px; font-family: Helvetica, Arial, sans-

serif; font-weight: normal; color: #333333;" class="padding" colspan="2">Eventos de Nuestro Casamiento</td>
                </tr>
                <tr>
                    <td align="center" height="100%" valign="top" width="100%" colspan="2">
                        <!--[if (gte mso 9)|(IE)]>
                        <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                        <tr>
                        <td align="center" valign="top" width="500">
                        <![endif]-->
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-

width:500;">
                            <tr>
                                <td align="center" valign="top" style="font-size:0;">
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                                    <tr>
                                    <td align="left" valign="top" width="115">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:115px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="115">
                                            <tr>
                                                <td valign="top" style="padding: 40px 0 0 0;" class="mobile-hide"><a 

href="http://litmus.com" target="_blank"><img src="https://www.giypablo.com' + @calendar +'" alt="alt text here" width="105" height="105" border="0" 

style="display: block; font-family: Arial; color: #666666; font-size: 14px; width: 105px; height: 105px;"></a></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    <td align="left" valign="top" width="385">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:385px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>

                                                <td style="padding: 40px 0 0 0;" class="no-padding">
                                                    <!-- ARTICLE -->
                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 13px; 

font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #aaaaaa;" class="padding-meta">1 DE NOVIEMBRE DE 2018
11:00 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 22px; 

font-family: Helvetica, Arial, sans-serif; font-weight: bold; color: #333333;" class="padding">Civil</td>
                                                        </tr>
                                                        <tr>
                                                             <td align="left" style="padding: 10px 0 15px 25px; font-size: 

16px; line-height: 24px; font-family: Helvetica, Arial, sans-serif; color: #666666;" class="padding"><strong>REGISTRO 

CIVIL</strong><br>
URUGUAY 753 - CAPITAL FEDERAL</td>
                                                        </tr>
                                                        

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if (gte mso 9)|(IE)]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
                <tr>
                    <td align="center" height="100%" valign="top" width="100%" colspan="2">
                        <!--[if (gte mso 9)|(IE)]>
                        <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                        <tr>
                        <td align="center" valign="top" width="500">
                        <![endif]-->
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-

width:500;">
                            <tr>
                                <td align="center" valign="top" style="font-size:0;">
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                                    <tr>
                                    <td align="left" valign="top" width="115">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:115px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="115">
                                            <tr>
                                                <td valign="top" style="padding: 40px 0 0 0;" class="mobile-hide"><a 

href="http://litmus.com" target="_blank"><img src="https://www.giypablo.com' + @calendar +'" alt="alt text here" width="105" height="105" border="0" 

style="display: block; font-family: Arial; color: #666666; font-size: 14px; width: 105px; height: 105px;"></a></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    <td align="left" valign="top" width="385">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:385px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>

                                                <td style="padding: 40px 0 0 0;" class="no-padding">
                                                    <!-- ARTICLE -->
                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 13px; 

font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #aaaaaa;" class="padding-meta">3 DE NOVIEMBRE DE 2018
11:00 AM</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 22px; 

font-family: Helvetica, Arial, sans-serif; font-weight: bold; color: #333333;" class="padding">Ceremonia</td>
                                                        </tr>
                                                        <tr>
                                                             <td align="left" style="padding: 10px 0 15px 25px; font-size: 

16px; line-height: 24px; font-family: Helvetica, Arial, sans-serif; color: #666666;" class="padding"><strong>BASILICA SAN 

ANTONIO</strong><br>AV. LINCOLN 3751 - VILLA DEVOTO - CAPITAL FEDERAL</td>
                                                        </tr>
						</table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if (gte mso 9)|(IE)]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
                <tr>
                    <td align="center" height="100%" valign="top" width="100%" colspan="2">
                        <!--[if (gte mso 9)|(IE)]>
                        <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                        <tr>
                        <td align="center" valign="top" width="500">
                        <![endif]-->
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-

width:500;">
                            <tr>
                                <td align="center" valign="top" style="font-size:0;">
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="500">
                                    <tr>
                                    <td align="left" valign="top" width="115">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:115px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="115">
                                            <tr>
                                                <td valign="top" style="padding: 40px 0 0 0;" class="mobile-hide"><a 

href="http://litmus.com" target="_blank"><img src="https://www.giypablo.com' + @calendar +'"  alt="alt text here" width="105" height="105" border="0" 

style="display: block; font-family: Arial; color: #666666; font-size: 14px; width: 105px; height: 105px;"></a></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    <td align="left" valign="top" width="385">
                                    <![endif]-->
                                    <div style="display:inline-block; margin: 0 -2px; max-width:385px; vertical-align:top; 

width:100%;">

                                        <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>

                                                <td style="padding: 40px 0 0 0;" class="no-padding">
                                                    <!-- ARTICLE -->
                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 13px; 

font-family: Helvetica, Arial, sans-serif; font-weight: normal; color: #aaaaaa;" class="padding-meta">3 DE NOVIEMBRE DE 2018
12:30 PM</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="padding: 0 0 5px 25px; font-size: 22px; 

font-family: Helvetica, Arial, sans-serif; font-weight: bold; color: #333333;" class="padding">Fiesta</td>
                                                        </tr>
                                                        <tr>
                                                             <td align="left" style="padding: 10px 0 15px 25px; font-size: 

16px; line-height: 24px; font-family: Helvetica, Arial, sans-serif; color: #666666;" class="padding"><strong>BELLA 

ROSA</strong><br>
PASAJE LAS PROVINCIAS 3052 / 3068</td>
                                                        </tr>
                                                        

                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!--[if (gte mso 9)|(IE)]>
                        </td>
                        </tr>
                        </table>
                        <![endif]-->
                    </td>
                </tr>
            </table>
            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </td>
    </tr>
</table>
</body>
</html>'
        
        mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

        message_params = {:from => 'giypablo@mailgun.giypablo.com',
               :to => @g.email,
               :subject => 'Gi y Pablo - Invitación a Nuestro Casamiento',
               :html => @html
        }
        
        result = mg_client.send_message('mailgun.giypablo.com', message_params).to_h!
        
        @results.store(@g.email,result)
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
  def compute_url_from_resource
      render 'klklklklklk'
  end
  
end


action_item only: :show do
  link_to 'Enviar por Emaill', admin_invitation_quick_send_path, class: 'fancybox', data: { 'fancybox-type' => 'ajax' }
end

action_item :view, only: :show do
  link_to 'Compartir por Whatsapp', admin_invitation_path(resource)+'?send=whatsapp'
end

sidebar "Estado de Envío", only: :show do
  render 'send', { invitation: invitation }
end

index :title => 'Invitaciones' do
  column "Invitados" do |invitation|
    invitation.guests.collect{|t| t.name}.join(', ').html_safe
  end
  column "Cantidad de Invitados", :sortable do |invitation|
    invitation.guests.count
  end
  column "" do |invitation|
    link_to "Editar", admin_invitation_path(invitation), :class => "member_link edit_link"
  end
end

show do |invitation|
  team = Invitation.find(params[:id])

  panel "Invitación" do
    attributes_table_for team do
      row "Título" do
        best_in_place invitation, :title, as: :input, url: [:admin, invitation], :place_holder => "Clic para editar"
      end
      row "Última modificación", :updated_at
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

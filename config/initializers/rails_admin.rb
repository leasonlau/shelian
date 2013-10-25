#coding: utf-8
# RailsAdmin config file. Generated on July 18, 2012 22:32
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  require 'i18n'
  # I18n.default_locale = :de
  # I18n.default_locale = "zh-CN"

  config.current_user_method { current_admin } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, Admin

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, Admin

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Shelian', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }
  
  config.model Article do
    edit do
      field :title
      field :author
      field :unit
      field :content, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Notice do
    edit do
      field :title
      field :from
      field :content, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Periodical do
    edit do
      field :name
      field :content, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Event do
    edit do
      field :area, :enum do
        # ['社联活动','校园活动']
      end
      field :title
      field :kind, :enum do
        # ['讲座沙龙','校园文化','竞赛创新','实践公益','其他']
      end
      field :photo
      field :begin
      field :end
      field :address
      field :organizer
      field :sponsor
      field :contact
      field :is_index
      field :content, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Aboutshelian do
    edit do
      field :title, :enum do
        #['社联章程','社联骨干','工作流程','主席团','秘书处','督导处','外联部','内务部','宣传部','策划部','新闻部']
      end
      field :content, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Star do
    edit do
      field :area, :enum do
        # ['社联之星','社团之星']
      end
      field :name
      field :photo
      field :department
      field :position
      field :contact
      field :institute
      field :motto
      field :detail, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  config.model Aboutshetuan do
    edit do
      field :name
      field :logo
      field :president
      field :contact
      field :kind, :enum do
        # ['社会公益类','体育运动类','文艺特长类','学术创新类',应用实践类']
      end
      field :institute
      field :begin
      field :is_excellent
      field :detail, :rich_editor do
         config({ 
           :insert_many => true 
         })
      end
    end
  end

  # config.model Album do
  #   edit do
  #     field :name
  #     field :description
  #   end
  # end

  # config.model Photo do
  #   edit do
  #     field :album
  #     field :photo_file
  #     field :description
  #   end
  # end

  # config.model Download do
  #   edit do
  #     field :attachment
  #     field :description
  #     field :kind, :enum do
  #       # ['成立社团相关','社团事务相关','场地借用相关']
  #     end
  #   end
  # end

  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = []

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = []

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

end

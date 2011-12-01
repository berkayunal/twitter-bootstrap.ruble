require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Twitter Bootstrap'
  bundle.author = 'Berkay ÜNAL & Bora ÜNAL'
  bundle.copyright = <<END
(c) Copyright 2011 berkayunal.com. Distributed under MIT license.
END

  bundle.description = <<END
Twitter Bootstrap Bundle for Aptana Studio 3
END

  bundle.repository = "git://github.com/berkayunal/twitter-bootstrap.ruble.git"

  bundle.menu 'Twitter Bootstrap' do |menu|

    menu.menu 'A' do |sub_menu|
        sub_menu.command '<a> Danger'
        sub_menu.command '<a> Default'
        sub_menu.command '<a> Disabled'
        sub_menu.command '<a> Info'
        sub_menu.command '<a> Primary'
        sub_menu.command '<a> Success'

    end
     menu.menu "Alerts - Errors" do |aler|
     
      aler.menu 'Basic' do |alerts|
        alerts.command "Alert Error"
        alerts.command "Alert Info"
        alerts.command "Alert Success"
        alerts.command "Alert Warning"

      end
      aler.menu 'Block' do |blckmsg|
        blckmsg.command "Block Error"
        blckmsg.command "Block Info"
        blckmsg.command "Block Success"
        blckmsg.command "Block Warning"
      
      end
      
    end
    
    menu.menu 'Button' do |sub_menu|
        sub_menu.command '<button> Danger'
        sub_menu.command '<button> Default'
        sub_menu.command '<button> Disabled'
        sub_menu.command '<button> Info'
        sub_menu.command '<button> Primary'
        sub_menu.command '<button> Success'
    end
    menu.menu 'Form' do |sub_menu|
        sub_menu.command 'Form Default'
        sub_menu.command 'Form Stacked'
        sub_menu.separator
        sub_menu.command'Appended Checkbox'
        sub_menu.command'Disabled Input'
        sub_menu.command'Disabled Textarea'
        sub_menu.command'File Input'
        sub_menu.command'Help'
        sub_menu.command'Inline Inputs'
        sub_menu.command'Input'
        sub_menu.command'List Of Options Checkbox'
        sub_menu.command'List Of Options Radio'
        sub_menu.command'Multi Select'
        sub_menu.command'Prepended Checkbox'
        sub_menu.command'Prepended Text'
        sub_menu.command'Select'
        sub_menu.command'Textarea'
        sub_menu.command'Uneditable Input'

     end   
    menu.menu 'Inline Labels' do |sub_menu|
        sub_menu.command 'Inline Label Default'
        sub_menu.command 'Inline Label Important'
        sub_menu.command 'Inline Label New'
        sub_menu.command 'Inline Label Notice'
        sub_menu.command 'Inline Label Warning'
    end
    menu.menu 'Layout' do |sub_menu|
        sub_menu.command 'Fixed Layout' 
        sub_menu.command 'Fluid Layout' 
        sub_menu.separator
        sub_menu.command 'Media Grid' 
        sub_menu.command 'Nested Columns' 
        sub_menu.command 'Row' 
       
    end
    menu.menu 'Lists' do |sub_menu|
        sub_menu.command 'Description'   
        sub_menu.command 'Ordered' 
        sub_menu.command 'Unordered' 
        sub_menu.command 'Unstyled' 
    end
    menu.menu 'Navigation' do |sub_menu|
        sub_menu.command 'Breadcrumbs' 
        sub_menu.command 'Pagination' 
        sub_menu.command 'Pills' 
        sub_menu.command 'Tabs' 
       
    end
    
    menu.menu 'Other' do |sub_menu|
        sub_menu.command '<blockquote>' 
        sub_menu.command '<code>' 
        sub_menu.command '<pre>' 
        sub_menu.command '<pre> Pretty Print' 
    end
    
    menu.menu 'Table' do |sub_menu|
        sub_menu.command 'Bordered Table'
        sub_menu.command 'Condensed Table'
        sub_menu.command 'Default Table'
        sub_menu.command 'Zebra Table'
 
    end
    
    menu.separator
    
    menu.command 'Visit Project Homepage'
    menu.command 'Visit Twitter Bootstrap Homepage'
    menu.menu "Authors" do |authors|
     
      authors.menu 'About Berkay UNAL'
      authors.menu 'About Bora UNAL'

      end 
    
  end
end
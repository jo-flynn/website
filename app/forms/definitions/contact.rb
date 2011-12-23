require 'forms/views/default'

ActiveForm::Definition::create :contact do |f| 
    f.section :info do |s|
        s.text_element :name, :class => 'required' do |e|
            e.validates_as_required :msg => 'Please enter your name'
        end
        s.text_element :email, :class => 'required' do |e|
            e.validates_as_required :msg => 'Please enter your email address'
            e.validates_as_email :msg => 'Please enter a valid email address'
        end
        s.textarea_element :message, :class => 'required' do |e|
            e.validates_as_requred :msg => "Let me know what's on your mind!"
        end
        s.submit_element :submit, :label => 'Contact me!', :class => 'fancy_submit' 
    end

    f.after_validation do |form|
    if form.valid?
      form.remove_elements_of_type :submit, :button
      form.freeze!
    end
  end
end

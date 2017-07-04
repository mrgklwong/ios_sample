module APIDemos
  module Registration
    class << self

      def registerbutton
        wait { find_element(:name, 'register_btn').click }
        self
      end


      def email(option)
        wait { find_element(:name, 'email_address_field').send_keys option }
        button_exact('Next').click
      end

      def password(option)
        wait {find_element(:name, 'password_field').send_keys option  }
        button_exact('Next').click
      end

      def firstname(option)
        wait {find_element(:name, 'given_name_field').send_keys option }
        button_exact('Next').click
      end

      def lastname(option)
        wait {find_element(:name, 'family_name_field').send_keys option  }

      end

      def spinner
        wait{find_element(:xpath, ' //UIAApplication[1]/UIAWindow[1]/UIAImage[1]')}
      end

      def spinner_text
        wait{find_element(:name, 'Registering..')}
      end

      def signup_random
        ran = RandomToken.gen('%3n')
        email("mrgklw+#{ran}@gmail.com")
        password('password1')
        firstname('Gary')
        lastname('Wong')
        button_exact('custom_keyboard_done_btn').click
        registerbutton
      end

    end
  end
end

module Kernel
  def registration
    APIDemos::Registration
  end
end
module APIDemos
  module Startpage
    class << self

      def signup
        wait {button_exact('landing_join_now_button').click}
        self
      end #hh

      def checklocation    #Sometimes this needs to be disabled.
         wait { alert_accept if exists { 'Allow "Loyalty" to access your location while you use the app' } }
        self
      end

    end
  end
end

module Kernel
  def startpage
    APIDemos::Startpage
  end
end
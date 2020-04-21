Dir[File.join(File.dirname(__FILE__), "pages/*_page.rb")].each { |file| require file}


module HelperPages

  def base_page
    @base_page ||= BasePage::new
  end

  def home_page
    @home_page ||= HomePage::new
  end

  def my_account_page
    @my_account_page ||= MyAccountPage::new
  end

  def login_page
    @login_page ||= LoginPage::new
  end

  def create_account_page
    @create_account_page ||= CreateAccountPage::new
  end

end

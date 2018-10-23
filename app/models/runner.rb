class Runner < ApplicationRecord
  belongs_to :country, optional: true
  has_many :brunks , :foreign_key => 'runner_one_id'
  has_many :brunks_one , :foreign_key => 'runner_two_id',  class_name: 'Brunk'
  has_many :properties

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable,
       :omniauthable, :omniauth_providers => [:google_oauth2]


  mount_uploader :image, RunnerAvatarUploader





  def self.find_for_google_oauth2(auth)
    data = auth.info
  
    if Runner.where(email: auth.info.email).exists?
        runner = Runner.where(email: auth.info.email).first do |runner|
        runner.provider = auth.provider
        runner.uid = auth.uid
        runner.email = auth.info.email
        runner.password = "alejo0906"
    end

      runner.token = auth.credentials.token
      runner.expires_ats = auth.credentials.expires_at
      runner.refresh_token = auth.credentials.refresh_token
      runner.save
      return runner
    else

       #Runner = Runner.new do |Runner|
        #Runner.provider = auth.provider
       # Runner.uid = auth.uid
       # Runner.email = auth.info.email
        #Runner.password = "alejo0906"
      #end
      #Runner.token = auth.credentials.token
      #Runner.refresh_token = auth.credentials.refresh_token
     # Runner.save
      return nil
    end
  end


  def refresh_token_if_expired
  if token_expired?
    
    url = URI("https://accounts.google.com/o/oauth2/token")
    net = Net::HTTP.post_form(url, { 'refresh_token' => self.refresh_token,
      'client_id'     => ENV['CLENT_ID'],
      'client_secret' => ENV['CLIENT_SECRET'],
      'grant_type'    => 'refresh_token'})


   
     
    refreshhash = JSON.parse(net.body)
    self.token     = refreshhash['access_token']
    self.expires_ats = DateTime.now + refreshhash["expires_in"].to_i.seconds

    self.save
 
  end

end

def token_expired?
  expiry = Time.at(self.expires_ats.to_i) 
  return true if expiry < Time.now # expired token, so we should quickly return
  token_expires_ats = expiry
  save if changed?
  false # token not expired. :D
end

end

class User < ApplicationRecord
    attr_accessor :password

    validates :email, uniqueness:  true, length: { in: 5..50 }#, format: { with: /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i/,message: "Only letters allowed" }
    validates :password ,presence: true,confirmation: true, length: {in: 4..20},on: :create
  
    before_save :encrypt_password
    
    def self.authenticate(email,password)#class method
        user = find_by_email(email)
        return user if user && user.authenticated_password(password)
    end 
    
    def authenticated_password(password)
        self.encrypted_password == encrypt(password)
    end

    protected #3
    def encrypt_password #1
        return if password.blank?
        self.encrypted_password = encrypt(password)
    end
  
    def encrypt(string) #2
       Digest::SHA1.hexdigest(string) #Inbuilt module to enctypt the password
    end
end

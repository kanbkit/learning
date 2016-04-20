require 'json'


class User
    attr_accessor  :name, :email, :permissons
    def initialize(*args)
        @name = args[0]
        @email = args[1]
        @permissons = User.permissons_from_template
    end
    
    def self.permissons_from_template
        file = File.read 'user_permisson_temp.json' 
        JSON.load(file,nil,symbolize_names:false)
    end
    
    def save
        self_json = {email: @email, name: @name,  permissons: @permissons}.to_json
        open('userdata.json','a') do |file|
            file.puts self_json
        end
    end
end


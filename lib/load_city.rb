# To change this template, choose Tools | Templates
# and open the template in the editor.

$KCODE="U"

module TestMongodb
    def load_city()
    #first to judge whether  we need do load
      filename=File.dirname(__FILE__)+File::SEPARATOR+"code3.txt"
      open(filename).each do |line|
          line=Iconv.conv("utf-8","GB2312",line)
           puts line
          name= line.split(',')
         if name[0].match(/\d+\d$/)
         name[1]=name[1].chomp!
         end
        CityTree.new("city_code"=>name[0],"city_name"=>name[1])

      end
    #if not loaded, then do load

    #else not load
    end

  end


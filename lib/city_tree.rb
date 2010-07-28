# To change this template, choose Tools | Templates
# and open the template in the editor.

 class CityTree
     include MongoMapper::Document
      key :city_name, String
      key :city_code, String
      key :parent_id, String
      key :child_ids, Array

      validates_presence_of :city_name
      validates_presence_of :city_code
      validates_uniqueness_of :city_code,:city_name
  end

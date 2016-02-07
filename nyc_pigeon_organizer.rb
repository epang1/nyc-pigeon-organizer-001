require 'pry'
def nyc_pigeon_organizer(pigeon_data)
new_hash = {}
  pigeon_data.each do |attribute, colour|
    colour.each do |colour, names|
      names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][attribute] == nil
          new_hash[name][attribute] = []
        end
        new_hash[name][attribute] << colour.to_s
      end
    end
  end
  return new_hash
end
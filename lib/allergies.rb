class Fixnum
  define_method(:allergies) do
    allergens = {
      cats: 128,
      pollen: 64,
      chocolate: 32,
      tomatoes: 16,
      strawberries: 8,
      shellfish: 4,
      peanuts: 2,
      eggs: 1
    }

    total = self
    array = []
    
    allergens.each() do |key, value|
      until total - value < 0
        array.push(key)
        total = total - value
      end
    end
  end

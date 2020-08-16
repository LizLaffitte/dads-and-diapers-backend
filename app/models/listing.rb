class Listing < ApplicationRecord
    has_many :reviews
    geocoded_by :address, latitude: :lat, longitude: :long
    after_validation :geocode
    validates :name, presence: true

    def womens_true
        trues = 0.0
        self.reviews.each do | review |
            if review.womens
                trues += 1.0
            end
        end
        self.calc_percentages(trues)
    end

    def mens_true
        trues = 0.0
        self.reviews.each do | review |
            if review.mens
                trues += 1.0
            end
        end
        self.calc_percentages(trues)
    end

    def isolated_true
        trues = 0.0
        self.reviews.each do | review |
            if review.isolated
                trues += 1.0
            end
        end
        self.calc_percentages(trues)
    end

    def clean_true
        trues = 0.0
        self.reviews.each do | review |
            if review.clean
                trues += 1.0
            end
        end
        self.calc_percentages(trues)
    end

    def working_true
        trues = 0.0
        self.reviews.each do | review |
            if review.working
                trues += 1.0
            end
        end
        self.calc_percentages(trues)
    end

    def calc_chances
        self.update(
            :womens_chance => self.womens_true,
            :mens_chance => self.mens_true,
            :clean_chance => self.clean_true,
            :isolated_chance => self.isolated_true,
            :working_chance => self.working_true
            )
    end

    def calc_percentages(true_total)
        if true_total > 0
            ((true_total / self.reviews.count) * 100).round
        else
            return 0
        end
    end
    


end

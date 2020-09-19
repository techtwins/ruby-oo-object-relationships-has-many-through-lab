class Doctor 

    @@all =[]
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select { |appt|appt.doctor == self}
    end

    def patients
        #songs.map { |song| song.artist}
        appointments.map { |p_appts|p_appts.patient}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
end
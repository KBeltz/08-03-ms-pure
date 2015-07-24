module LocationsHelper

  def locations_for_select
    Location.all.collect { |l| [l.location_name, l.id] }
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mode.create( description: "Shopping" )
Mode.create( description: "Public Bidding" )
Mode.create( description: "Requests for Quotation" )

100.times do
	Bid.create(
		title: FFaker::Job.title,
		contractor: FFaker::Name.name,
	    number: 1,
	    mode: 1,
	    preprocurement: "2016-02-16 15:56:05",
	    prebidding: "2016-02-16 15:56:05",
	    bidding: "2016-02-16 15:56:05",
	    postqualification: "2016-02-16 15:56:05",
	    noa: "2016-02-16 15:56:05",
	    purchase: "2016-02-16 15:56:05",
	    ntp: "2016-02-16 15:56:05",
	    members: FFaker::BaconIpsum.paragraph,
	    remarks: FFaker::CheesyLingo.paragraph
	)
end

100.times do
	Bid.create(
		title: FFaker::Job.title,
		contractor: FFaker::Name.name,
	    number: 1,
	    mode: 2,
	    preprocurement: "2016-02-16 15:56:05",
	    prebidding: "2016-02-16 15:56:05",
	    bidding: "2016-02-16 15:56:05",
	    postqualification: "2016-02-16 15:56:05",
	    noa: "2016-02-16 15:56:05",
	    purchase: "2016-02-16 15:56:05",
	    ntp: "2016-02-16 15:56:05",
	    members: FFaker::BaconIpsum.paragraph,
	    remarks: FFaker::CheesyLingo.paragraph
	)
end

100.times do
	Bid.create(
		title: FFaker::Job.title,
		contractor: FFaker::Name.name,
	    number: 1,
	    mode: 3,
	    preprocurement: "2016-02-16 15:56:05",
	    prebidding: "2016-02-16 15:56:05",
	    bidding: "2016-02-16 15:56:05",
	    postqualification: "2016-02-16 15:56:05",
	    noa: "2016-02-16 15:56:05",
	    purchase: "2016-02-16 15:56:05",
	    ntp: "2016-02-16 15:56:05",
	    members: FFaker::BaconIpsum.paragraph,
	    remarks: FFaker::CheesyLingo.paragraph
	)
end
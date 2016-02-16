json.array!(@bids) do |bid|
  json.extract! bid, :id, :title, :contractor, :number, :preprocurement, :prebidding, :bidding, :postqualification, :noa, :purchase, :ntp, :members, :remarks
  json.url bid_url(bid, format: :json)
end

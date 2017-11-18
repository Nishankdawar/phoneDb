module Api 
	module V1
		class PhoneNumberController < ::ApiController
			def new_number
				phone = params[:phone_number]
				if PhoneN.find_by_phone_number phone
					return response_data({present: true}, "Phone number already present, cannot be inserted", 201)
				end
				PhoneN.create(phone_number: phone)
				return response_data({phone: phone},"New number added",200)
			end

			def present
				phone = params[:phone_number]
				if PhoneN.find_by_phone_number phone
					return response_data({present: true}, "Phone number present, block it", 200)
				end
					return response_data({present: false}, "Phone number not present", 201)
			end
		end
	end
end
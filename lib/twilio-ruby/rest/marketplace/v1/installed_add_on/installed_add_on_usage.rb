##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Marketplace
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Marketplace < MarketplaceBase
            class V1 < Version
                class InstalledAddOnContext < InstanceContext

                     class InstalledAddOnUsageList < ListResource
                
                    class CreateMarketplaceBillingUsageRequest
                            # @param [billable_items]: [Array<InstalledAddOnUsageList.CreateMarketplaceBillingUsageRequestBillableItems>] 
                        attr_accessor :billable_items
                        def initialize(payload)
                                @billable_items = payload["billable_items"]
                        end
                        def to_json(options = {})
                        {
                                billable_items: @billable_items,
                        }.to_json(options)
                        end
                    end

                    class CreateMarketplaceBillingUsageRequestBillableItems
                            # @param [quantity]: [Float] 
                            # @param [sid]: [String] 
                        attr_accessor :quantity, :sid
                        def initialize(payload)
                                @quantity = payload["quantity"]
                                @sid = payload["sid"]
                        end
                        def to_json(options = {})
                        {
                                quantity: @quantity,
                                sid: @sid,
                        }.to_json(options)
                        end
                    end

                    ##
                    # Initialize the InstalledAddOnUsageList
                    # @param [Version] version Version that contains the resource
                    # @return [InstalledAddOnUsageList] InstalledAddOnUsageList
                    def initialize(version, installed_add_on_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { installed_add_on_sid: installed_add_on_sid }
                        @uri = "/InstalledAddOns/#{@solution[:installed_add_on_sid]}/Usage"
                        
                    end
                    ##
                    # Create the InstalledAddOnUsageInstance
                    # @param [CreateMarketplaceBillingUsageRequest] create_marketplace_billing_usage_request 
                    # @return [InstalledAddOnUsageInstance] Created InstalledAddOnUsageInstance
                    def create(create_marketplace_billing_usage_request: nil
                    )

                        headers = Twilio::Values.of({"Content-Type"=> "application/json"})
                        payload = @version.create('POST', @uri, data: create_marketplace_billing_usage_request.to_json, headers: headers)
                        InstalledAddOnUsageInstance.new(
                            @version,
                            payload,
                            installed_add_on_sid: @solution[:installed_add_on_sid],
                        )
                    end

                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Marketplace.V1.InstalledAddOnUsageList>'
                    end
                end

                class InstalledAddOnUsagePage < Page
                    ##
                    # Initialize the InstalledAddOnUsagePage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [InstalledAddOnUsagePage] InstalledAddOnUsagePage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of InstalledAddOnUsageInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [InstalledAddOnUsageInstance] InstalledAddOnUsageInstance
                    def get_instance(payload)
                        InstalledAddOnUsageInstance.new(@version, payload, installed_add_on_sid: @solution[:installed_add_on_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Marketplace.V1.InstalledAddOnUsagePage>'
                    end
                end
                class InstalledAddOnUsageInstance < InstanceResource
                    ##
                    # Initialize the InstalledAddOnUsageInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this InstalledAddOnUsage
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [InstalledAddOnUsageInstance] InstalledAddOnUsageInstance
                    def initialize(version, payload , installed_add_on_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'billable_items' => payload['billable_items'],
                            'total_submitted' => payload['total_submitted'],
                        }
                    end

                    
                    ##
                    # @return [Array<MarketplaceInstalledAddOnBillingUsageResponseBillableItems>] 
                    def billable_items
                        @properties['billable_items']
                    end
                    
                    ##
                    # @return [Float] Represents the total quantity submitted.
                    def total_submitted
                        @properties['total_submitted']
                    end
                    
                    ##
                    # Provide a user friendly representation
                    def to_s
                        "<Twilio.Marketplace.V1.InstalledAddOnUsageInstance>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        "<Twilio.Marketplace.V1.InstalledAddOnUsageInstance>"
                    end
                end

             end
            end
        end
    end
end



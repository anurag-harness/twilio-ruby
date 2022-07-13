##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Insights < Domain
      class V1 < Version
        class CallContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AnnotationList < ListResource
            ##
            # Initialize the AnnotationList
            # @param [Version] version Version that contains the resource
            # @param [String] call_sid The unique SID identifier of the Call.
            # @return [AnnotationList] AnnotationList
            def initialize(version, call_sid: nil)
              super(version)

              # Path Solution
              @solution = {call_sid: call_sid}
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Insights.V1.AnnotationList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AnnotationPage < Page
            ##
            # Initialize the AnnotationPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [AnnotationPage] AnnotationPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of AnnotationInstance
            # @param [Hash] payload Payload response from the API
            # @return [AnnotationInstance] AnnotationInstance
            def get_instance(payload)
              AnnotationInstance.new(@version, payload, call_sid: @solution[:call_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Insights.V1.AnnotationPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AnnotationContext < InstanceContext
            ##
            # Initialize the AnnotationContext
            # @param [Version] version Version that contains the resource
            # @param [String] call_sid The unique SID identifier of the Call.
            # @return [AnnotationContext] AnnotationContext
            def initialize(version, call_sid)
              super(version)

              # Path Solution
              @solution = {call_sid: call_sid, }
              @uri = "/Voice/#{@solution[:call_sid]}/Annotation"
            end

            ##
            # Update the AnnotationInstance
            # @param [annotation.AnsweredBy] answered_by Which entity answered the call as
            #   determined by Answering Machine Detection. Use this to provide feedback on
            #   Answering Machine Detection accuracy. Possible enumerated values, one of: human,
            #   machine. human indicates the call was answered by a person. machine indicates
            #   the call was answered by an answering machine.
            # @param [annotation.ConnectivityIssue] connectivity_issue Specify if the call had
            #   any connectivity issues. Possible enumerated values, one :
            #   no_connectivity_issue, invalid_number, caller_id, dropped_call,
            #   number_reachability.
            # @param [String] quality_issues Specify if the call had any subjective quality
            #   issues. Possible values, one or more of:  no_quality_issue, low_volume,
            #   choppy_robotic, echo, dtmf, latency, owa, static_noise. Use comma separated
            #   values to indicate multiple quality issues for the same call
            # @param [Boolean] spam Specify if the call was a spam call. Use this to provide
            #   feedback on whether calls placed from your account were marked as spam, or if
            #   inbound calls received by your account were unwanted spam. Is of type Boolean:
            #   true, false. Use true if the call was a spam call.
            # @param [String] call_score Specify the call score. This is of type integer. Use
            #   a range of 1-5 to indicate the call experience score, with the following mapping
            #   as a reference for rating the call [5: Excellent, 4: Good, 3 : Fair, 2 : Poor,
            #   1: Bad].
            # @param [String] comment Specify any comments pertaining to the call. This of
            #   type string with a max limit of 100 characters. Twilio does not treat this field
            #   as PII, so don’t put any PII in here.
            # @param [String] incident Associate this call with an incident or support ticket.
            #   This is of type string with a max limit of 100 characters. Twilio does not treat
            #   this field as PII, so don’t put any PII in here.
            # @return [AnnotationInstance] Updated AnnotationInstance
            def update(answered_by: :unset, connectivity_issue: :unset, quality_issues: :unset, spam: :unset, call_score: :unset, comment: :unset, incident: :unset)
              data = Twilio::Values.of({
                  'AnsweredBy' => answered_by,
                  'ConnectivityIssue' => connectivity_issue,
                  'QualityIssues' => quality_issues,
                  'Spam' => spam,
                  'CallScore' => call_score,
                  'Comment' => comment,
                  'Incident' => incident,
              })

              payload = @version.update('POST', @uri, data: data)

              AnnotationInstance.new(@version, payload, call_sid: @solution[:call_sid], )
            end

            ##
            # Fetch the AnnotationInstance
            # @return [AnnotationInstance] Fetched AnnotationInstance
            def fetch
              payload = @version.fetch('GET', @uri)

              AnnotationInstance.new(@version, payload, call_sid: @solution[:call_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Insights.V1.AnnotationContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Insights.V1.AnnotationContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class AnnotationInstance < InstanceResource
            ##
            # Initialize the AnnotationInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] call_sid The unique SID identifier of the Call.
            # @return [AnnotationInstance] AnnotationInstance
            def initialize(version, payload, call_sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'call_sid' => payload['call_sid'],
                  'account_sid' => payload['account_sid'],
                  'answered_by' => payload['answered_by'],
                  'connectivity_issue' => payload['connectivity_issue'],
                  'quality_issues' => payload['quality_issues'],
                  'spam' => payload['spam'],
                  'call_score' => payload['call_score'] == nil ? payload['call_score'] : payload['call_score'].to_i,
                  'comment' => payload['comment'],
                  'incident' => payload['incident'],
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'call_sid' => call_sid, }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [AnnotationContext] AnnotationContext for this AnnotationInstance
            def context
              unless @instance_context
                @instance_context = AnnotationContext.new(@version, @params['call_sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] Call SID.
            def call_sid
              @properties['call_sid']
            end

            ##
            # @return [String] Account SID.
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [annotation.AnsweredBy] Indicates the answering entity as determined by Answering Machine Detection.
            def answered_by
              @properties['answered_by']
            end

            ##
            # @return [annotation.ConnectivityIssue] Indicates if the call had any connectivity issue
            def connectivity_issue
              @properties['connectivity_issue']
            end

            ##
            # @return [Array[String]] Indicates if the call had audio quality issues.
            def quality_issues
              @properties['quality_issues']
            end

            ##
            # @return [Boolean] Call spam indicator
            def spam
              @properties['spam']
            end

            ##
            # @return [String] Call Score
            def call_score
              @properties['call_score']
            end

            ##
            # @return [String] User comments
            def comment
              @properties['comment']
            end

            ##
            # @return [String] Call tag for incidents or support ticket
            def incident
              @properties['incident']
            end

            ##
            # @return [String] The URL of this resource.
            def url
              @properties['url']
            end

            ##
            # Update the AnnotationInstance
            # @param [annotation.AnsweredBy] answered_by Which entity answered the call as
            #   determined by Answering Machine Detection. Use this to provide feedback on
            #   Answering Machine Detection accuracy. Possible enumerated values, one of: human,
            #   machine. human indicates the call was answered by a person. machine indicates
            #   the call was answered by an answering machine.
            # @param [annotation.ConnectivityIssue] connectivity_issue Specify if the call had
            #   any connectivity issues. Possible enumerated values, one :
            #   no_connectivity_issue, invalid_number, caller_id, dropped_call,
            #   number_reachability.
            # @param [String] quality_issues Specify if the call had any subjective quality
            #   issues. Possible values, one or more of:  no_quality_issue, low_volume,
            #   choppy_robotic, echo, dtmf, latency, owa, static_noise. Use comma separated
            #   values to indicate multiple quality issues for the same call
            # @param [Boolean] spam Specify if the call was a spam call. Use this to provide
            #   feedback on whether calls placed from your account were marked as spam, or if
            #   inbound calls received by your account were unwanted spam. Is of type Boolean:
            #   true, false. Use true if the call was a spam call.
            # @param [String] call_score Specify the call score. This is of type integer. Use
            #   a range of 1-5 to indicate the call experience score, with the following mapping
            #   as a reference for rating the call [5: Excellent, 4: Good, 3 : Fair, 2 : Poor,
            #   1: Bad].
            # @param [String] comment Specify any comments pertaining to the call. This of
            #   type string with a max limit of 100 characters. Twilio does not treat this field
            #   as PII, so don’t put any PII in here.
            # @param [String] incident Associate this call with an incident or support ticket.
            #   This is of type string with a max limit of 100 characters. Twilio does not treat
            #   this field as PII, so don’t put any PII in here.
            # @return [AnnotationInstance] Updated AnnotationInstance
            def update(answered_by: :unset, connectivity_issue: :unset, quality_issues: :unset, spam: :unset, call_score: :unset, comment: :unset, incident: :unset)
              context.update(
                  answered_by: answered_by,
                  connectivity_issue: connectivity_issue,
                  quality_issues: quality_issues,
                  spam: spam,
                  call_score: call_score,
                  comment: comment,
                  incident: incident,
              )
            end

            ##
            # Fetch the AnnotationInstance
            # @return [AnnotationInstance] Fetched AnnotationInstance
            def fetch
              context.fetch
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Insights.V1.AnnotationInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Insights.V1.AnnotationInstance #{values}>"
            end
          end
        end
      end
    end
  end
end
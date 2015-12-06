WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
    # subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
    namespace :product do
      # subscribe :new, :to => ProductController, :with_method => :new_product
    end
  # The above will handle an event triggered on the client like `product.new`.


  subscribe :client_connected, to: CodeStreamController, with_method: :client_connected

 # You can subscribe any number of controller actions to a single event
 subscribe :new_message, to: CodeStreamController, with_method: :new_message
 # subscribe :new_message, to: ChatLogController, with_method: :log_message

 subscribe :new_user, to: CodeStreamController, with_method: :new_user
 subscribe :change_username, to: CodeStream, with_method: :change_username

 namespace :product do
   subscribe :new, to: ProductController, with_method: :new_product
 end

 # The :client_disconnected method is fired automatically when a client disconnects
 subscribe :client_disconnected, to: CodeStreamController, with_method: :delete_user
end

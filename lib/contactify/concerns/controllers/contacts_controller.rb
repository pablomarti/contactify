module Contactify
  module Concerns
    module Controllers
      module ContactsController
        extend ActiveSupport::Concern
	    
	    included do	 
	    	layout ENV['CONTACTIFY_ADMIN_LAYOUT']
	    end

	    def index
	      @contacts = Contact.order("id DESC")
	  
	      respond_to do |format|
	        format.html # index.html.erb
	        format.json { render json: @contacts }
	      end
	    end
	  
	    # GET /contacts/1
	    # GET /contacts/1.json
	    def show
	      @contact = Contact.find(params[:id])
	  
	      respond_to do |format|
	        format.html # show.html.erb
	        format.json { render json: @contact }
	      end
	    end
	  
	    # GET /contacts/new
	    # GET /contacts/new.json
	    def new
	      @contact = Contact.new
	  
	      respond_to do |format|
	        format.html # new.html.erb
	        format.json { render json: @contact }
	      end
	    end
	  
	    # GET /contacts/1/edit
	    def edit
	      @contact = Contact.find(params[:id])
	    end
	  
	    # POST /contacts
	    # POST /contacts.json
	    def create
	      @contact = Contact.new(params[:contact])
	  
	      respond_to do |format|
	        if @contact.save
	          format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
	          format.json { render json: @contact, status: :created, location: @contact }
	        else
	          format.html { render action: "new" }
	          format.json { render json: @contact.errors, status: :unprocessable_entity }
	        end
	      end
	    end
	  
	    # PUT /contacts/1
	    # PUT /contacts/1.json
	    def update
	      @contact = Contact.find(params[:id])
	  
	      respond_to do |format|
	        if @contact.update_attributes(params[:contact])
	          format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
	          format.json { head :no_content }
	        else
	          format.html { render action: "edit" }
	          format.json { render json: @contact.errors, status: :unprocessable_entity }
	        end
	      end
	    end
	  
	    # DELETE /contacts/1
	    # DELETE /contacts/1.json
	    def destroy
	      @contact = Contact.find(params[:id])
	      @contact.destroy
	  
	      respond_to do |format|
	        format.html { redirect_to contacts_url }
	        format.json { head :no_content }
	      end
	    end

	    def new_public
	      @contact = Contact.new
	  
	      respond_to do |format|
	        format.html { render :layout => ENV['CONTACTIFY_APPLICATION_LAYOUT'] }
	        format.json { render json: @contact }
	      end

	      
	    end

	    def save_public
	      @contact = Contact.new(params[:contact])
	  
	      respond_to do |format|
	        if verify_recaptcha(:model => @contact, :message => "Oh! It's error with reCAPTCHA!") && @contact.save
	          format.html { redirect_to contact_us_path, notice: 'Gracias por contactarnos' }
	          format.json { render json: @contact, status: :created, location: @contact }
	        else
	          format.html { render action: "new_public", :layout => ENV['CONTACTIFY_APPLICATION_LAYOUT'] }
	          format.json { render json: @contact.errors, status: :unprocessable_entity }
	        end
	      end
	    end

      end
    end
  end
end
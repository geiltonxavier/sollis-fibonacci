class FibonacciSequencesController < ApplicationController
  before_action :set_fibonacci_sequence, only: [:show]

 
  def index    
    render json: 'Busque o resultado fibonacci da quantidade, passando a quantidade pela url. exemplo : fibonacci_sequences/10'
  end

  
  def show
    render json: @fibonacci_sequence
  end


  private   
    def set_fibonacci_sequence      
      @fibonacci_sequence = FibonacciSequence.new.fibonacci_by_quantidade(params[:quantidade].to_i)
    end    
    def fibonacci_sequence_params
      params.require(:fibonacci_sequence).permit(:quantidade)
    end
end

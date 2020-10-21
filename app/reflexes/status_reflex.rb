# frozen_string_literal: true

class StatusReflex < ApplicationReflex

  def change
    task = Task.find(el.dataset[:id])
    task.update(status: el.dataset[:status])
    morph dom_id(task), TaskController.render(TaskComponent.new(task: task))
  end

end

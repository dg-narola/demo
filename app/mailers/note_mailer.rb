# frozen_string_literal: true

## for sending mail
class NoteMailer < ApplicationMailer
  default from: 'dg@narola.email'

  ## for sharing notes via mail for registered users
  def share_email(sharenote, user)
    @sharenote = sharenote
    @user = user
    @url = 'http://frozen-springs-82397.herokuapp.com/notes'
    mail(to: @sharenote.email, subject: 'Note Shared')
  end

  ## for sharing notes via mail for unregistered users
  def reg_email(sharenote, user)
    @sharenote = sharenote
    @url  = 'http://frozen-springs-82397.herokuapp.com/users/sign_up'
    @user = user
    mail(to: @sharenote.email, subject: 'Note Shared')
  end

  ## sending mail to the user for requestiong edit access
  def edit_email(sendto, user, note)
    @note = note.title
    @noteid = note.id
    @sendto = sendto
    @user = user
    @url  = "http://infinite-reaches-72546.herokuapp.com/notes/#{@noteid}/sharenotes/updatepermission"
    mail(to: @sendto, subject: 'Edit Access Mail')
  end
end

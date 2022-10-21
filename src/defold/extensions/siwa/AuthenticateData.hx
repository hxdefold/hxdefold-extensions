package defold.extensions.siwa;


typedef IdentityToken = { }
typedef UserId = { }


typedef AuthenticateData =
{
    var identity_token: IdentityToken;

    var user_id: UserId;

    var first_name: String;

    var family_name: String;

    var email: String;

    var user_status: Status;
}

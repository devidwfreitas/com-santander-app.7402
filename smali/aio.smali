.class final Laio;
.super Ljava/lang/Object;

# interfaces
.implements Lih;


# instance fields
.field private synthetic a:Laim;


# direct methods
.method constructor <init>(Laim;)V
    .locals 0

    iput-object p1, p0, Laio;->a:Laim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lis;)V
    .locals 1

    iget-object v0, p0, Laio;->a:Laim;

    invoke-static {v0}, Laim;->a(Laim;)Lain;

    move-result-object v0

    invoke-interface {v0, p1}, Lain;->b(Lis;)V

    return-void
.end method

.method public final onSuccess(Lis;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laio;->a:Laim;

    invoke-static {v0}, Laim;->a(Laim;)Lain;

    move-result-object v0

    invoke-interface {v0, p1}, Lain;->a(Lis;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lis;->a(Ljava/lang/String;)V

    iget-object v0, p0, Laio;->a:Laim;

    invoke-static {v0}, Laim;->a(Laim;)Lain;

    move-result-object v0

    invoke-interface {v0, p1}, Lain;->b(Lis;)V

    goto :goto_0
.end method

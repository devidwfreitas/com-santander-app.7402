.class Ldnw;
.super Ldkf;


# instance fields
.field final synthetic a:Ldno;


# direct methods
.method constructor <init>(Ldno;Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldnw;->a:Ldno;

    invoke-direct {p0, p2}, Ldkf;-><init>(Ldlv;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldnw;->a:Ldno;

    invoke-virtual {v0}, Ldno;->u()Ldkw;

    move-result-object v0

    invoke-virtual {v0}, Ldkw;->z()Ldky;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Ldky;->a(Ljava/lang/String;)V

    return-void
.end method

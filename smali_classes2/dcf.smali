.class Ldcf;
.super Ljava/lang/Object;

# interfaces
.implements Lctz;


# instance fields
.field final synthetic a:Ldce;


# direct methods
.method constructor <init>(Ldce;)V
    .locals 0

    iput-object p1, p0, Ldcf;->a:Ldce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Ldcf;->a:Ldce;

    invoke-virtual {v0}, Ldce;->j()Z

    move-result v0

    return v0
.end method

.method public v()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

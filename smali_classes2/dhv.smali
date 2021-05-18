.class Ldhv;
.super Ljava/lang/Object;

# interfaces
.implements Ldjo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjo",
        "<",
        "Ldiv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldhu;


# direct methods
.method constructor <init>(Ldhu;)V
    .locals 0

    iput-object p1, p0, Ldhv;->a:Ldhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldhv;->a:Ldhu;

    invoke-static {v0}, Ldhu;->a(Ldhu;)V

    return-void
.end method

.method public b()Ldiv;
    .locals 1

    iget-object v0, p0, Ldhv;->a:Ldhu;

    invoke-virtual {v0}, Ldhu;->w()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ldiv;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Ldhv;->b()Ldiv;

    move-result-object v0

    return-object v0
.end method

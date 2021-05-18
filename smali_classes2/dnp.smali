.class Ldnp;
.super Ldkf;


# instance fields
.field final synthetic a:Ldno;


# direct methods
.method constructor <init>(Ldno;Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldnp;->a:Ldno;

    invoke-direct {p0, p2}, Ldkf;-><init>(Ldlv;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldnp;->a:Ldno;

    invoke-static {v0}, Ldno;->b(Ldno;)V

    return-void
.end method

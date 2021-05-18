.class Ldvj;
.super Ldzt;


# instance fields
.field final synthetic a:Ldwx;


# direct methods
.method constructor <init>(Ldvb;Ldwx;)V
    .locals 0

    iput-object p2, p0, Ldvj;->a:Ldwx;

    invoke-direct {p0}, Ldzt;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leeg;)V
    .locals 2

    iget-object v0, p0, Ldvj;->a:Ldwx;

    new-instance v1, Ledx;

    invoke-direct {v1, p1}, Ledx;-><init>(Leeg;)V

    invoke-interface {v0, v1}, Ldwx;->a(Ledx;)V

    return-void
.end method

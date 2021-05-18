.class Ldvx;
.super Leca;


# instance fields
.field final synthetic a:Ldwm;


# direct methods
.method constructor <init>(Ldvb;Ldwm;)V
    .locals 0

    iput-object p2, p0, Ldvx;->a:Ldwm;

    invoke-direct {p0}, Leca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvx;->a:Ldwm;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwm;->a(Ledv;)V

    return-void
.end method

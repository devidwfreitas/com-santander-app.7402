.class Ldvw;
.super Lecd;


# instance fields
.field final synthetic a:Ldwn;


# direct methods
.method constructor <init>(Ldvb;Ldwn;)V
    .locals 0

    iput-object p2, p0, Ldvw;->a:Ldwn;

    invoke-direct {p0}, Lecd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leey;)V
    .locals 2

    iget-object v0, p0, Ldvw;->a:Ldwn;

    new-instance v1, Ledv;

    invoke-direct {v1, p1}, Ledv;-><init>(Leey;)V

    invoke-interface {v0, v1}, Ldwn;->a(Ledv;)V

    return-void
.end method

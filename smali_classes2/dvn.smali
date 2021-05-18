.class Ldvn;
.super Lebl;


# instance fields
.field final synthetic a:Ldwh;


# direct methods
.method constructor <init>(Ldvb;Ldwh;)V
    .locals 0

    iput-object p2, p0, Ldvn;->a:Ldwh;

    invoke-direct {p0}, Lebl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Ldvn;->a:Ldwh;

    invoke-interface {v0, p1}, Ldwh;->a(I)V

    return-void
.end method

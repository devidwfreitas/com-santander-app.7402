.class Ldxy;
.super Leai;


# instance fields
.field final synthetic a:Ldxl;


# direct methods
.method constructor <init>(Ldxx;Ldxl;)V
    .locals 0

    iput-object p2, p0, Ldxy;->a:Ldxl;

    invoke-direct {p0}, Leai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldzd;)V
    .locals 2

    iget-object v0, p0, Ldxy;->a:Ldxl;

    new-instance v1, Ldxn;

    invoke-direct {v1, p1}, Ldxn;-><init>(Ldzd;)V

    invoke-interface {v0, v1}, Ldxl;->a(Ldxn;)V

    return-void
.end method

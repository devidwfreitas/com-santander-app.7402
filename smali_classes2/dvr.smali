.class Ldvr;
.super Lebc;


# instance fields
.field final synthetic a:Ldwe;


# direct methods
.method constructor <init>(Ldvb;Ldwe;)V
    .locals 0

    iput-object p2, p0, Ldvr;->a:Ldwe;

    invoke-direct {p0}, Lebc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldvr;->a:Ldwe;

    invoke-interface {v0}, Ldwe;->a()V

    return-void
.end method

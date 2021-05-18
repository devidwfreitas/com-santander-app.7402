.class Ldvp;
.super Lebi;


# instance fields
.field final synthetic a:Ldwg;


# direct methods
.method constructor <init>(Ldvb;Ldwg;)V
    .locals 0

    iput-object p2, p0, Ldvp;->a:Ldwg;

    invoke-direct {p0}, Lebi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldvp;->a:Ldwg;

    invoke-interface {v0}, Ldwg;->a()V

    return-void
.end method

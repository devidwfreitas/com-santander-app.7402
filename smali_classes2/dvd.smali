.class Ldvd;
.super Lecm;


# instance fields
.field final synthetic a:Ldwp;


# direct methods
.method constructor <init>(Ldvb;Ldwp;)V
    .locals 0

    iput-object p2, p0, Ldvd;->a:Ldwp;

    invoke-direct {p0}, Lecm;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldvd;->a:Ldwp;

    invoke-interface {v0}, Ldwp;->a()V

    return-void
.end method

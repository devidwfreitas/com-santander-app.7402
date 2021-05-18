.class Ldor;
.super Ldkf;


# instance fields
.field final synthetic a:Ldoq;


# direct methods
.method constructor <init>(Ldoq;Ldlv;)V
    .locals 0

    iput-object p1, p0, Ldor;->a:Ldoq;

    invoke-direct {p0, p2}, Ldkf;-><init>(Ldlv;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldor;->a:Ldoq;

    invoke-static {v0}, Ldoq;->a(Ldoq;)V

    return-void
.end method

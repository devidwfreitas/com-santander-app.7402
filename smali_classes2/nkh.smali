.class Lnkh;
.super Ljava/lang/Object;

# interfaces
.implements Lngk;


# instance fields
.field final synthetic a:Lnkg;


# direct methods
.method constructor <init>(Lnkg;)V
    .locals 0

    iput-object p1, p0, Lnkh;->a:Lnkg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lngm;Lngm;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnkh;->a:Lnkg;

    invoke-static {v0, p2}, Lnkg;->a(Lnkg;Lngm;)Lngm;

    :cond_0
    return-void
.end method

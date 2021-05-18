.class public final Lduz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcwx;


# direct methods
.method constructor <init>(Lcwx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwx;

    iput-object v0, p0, Lduz;->a:Lcwx;

    return-void
.end method


# virtual methods
.method public a()Lcwx;
    .locals 1

    iget-object v0, p0, Lduz;->a:Lcwx;

    return-object v0
.end method

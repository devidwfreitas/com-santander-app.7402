.class public final Lcrs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Lcrp;


# direct methods
.method public constructor <init>(Lcrp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrs;->a:Lcrp;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcrs;->a:Lcrp;

    invoke-virtual {v0}, Lcrp;->evictAll()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcrs;->a:Lcrp;

    invoke-virtual {v0}, Lcrp;->evictAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcrs;->a:Lcrp;

    iget-object v1, p0, Lcrs;->a:Lcrp;

    invoke-virtual {v1}, Lcrp;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcrp;->trimToSize(I)V

    goto :goto_0
.end method

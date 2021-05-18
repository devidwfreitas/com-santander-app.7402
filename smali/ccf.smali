.class public final Lccf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lccf;->a:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lccd;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lccf;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lccf;->a:Landroid/os/Bundle;

    return-object v0
.end method

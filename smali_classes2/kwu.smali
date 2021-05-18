.class public Lkwu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgrs;


# direct methods
.method protected constructor <init>(Lgrs;)V
    .locals 0
    .param p1    # Lgrs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lkwu;->a:Lgrs;

    .line 20
    return-void
.end method

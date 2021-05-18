.class public Lbbp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbal;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lbal;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lbao;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbal;Lbal;Lbao;Lbao;)V
    .locals 0
    .param p1    # Lbal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lbal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lbao;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lbao;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbbp;->a:Lbal;

    .line 20
    iput-object p2, p0, Lbbp;->b:Lbal;

    .line 21
    iput-object p3, p0, Lbbp;->c:Lbao;

    .line 22
    iput-object p4, p0, Lbbp;->d:Lbao;

    .line 23
    return-void
.end method

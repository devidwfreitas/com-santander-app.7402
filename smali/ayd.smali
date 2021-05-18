.class final Layd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Layw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Layw;)V
    .locals 1
    .param p1    # Layw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layd;->a:Ljava/util/List;

    .line 287
    iput-object p1, p0, Layd;->b:Layw;

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Layw;Layc;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Layd;-><init>(Layw;)V

    return-void
.end method

.method static synthetic a(Layd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Layd;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Layd;)Layw;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Layd;->b:Layw;

    return-object v0
.end method

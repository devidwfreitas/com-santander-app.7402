.class Ldkz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkz;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ldkz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldkz;->a:Ljava/lang/String;

    return-object v0
.end method

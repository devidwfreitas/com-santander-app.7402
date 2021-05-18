.class final Lfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfw;


# direct methods
.method constructor <init>(Lfw;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lfe;->a:Lfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lfe;->a:Lfw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfw;->a(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

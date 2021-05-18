.class Lfed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lfec;


# direct methods
.method constructor <init>(Lfec;Z)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lfed;->b:Lfec;

    iput-boolean p2, p0, Lfed;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lfed;->b:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    iget-boolean v1, p0, Lfed;->a:Z

    invoke-virtual {v0, v1}, Lfej;->a(Z)V

    .line 140
    return-void
.end method

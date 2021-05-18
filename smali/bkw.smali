.class final Lbkw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkf;

.field final synthetic b:Lbls;


# direct methods
.method constructor <init>(Lbkf;Lbls;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lbkw;->a:Lbkf;

    iput-object p2, p0, Lbkw;->b:Lbls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lbkw;->a:Lbkf;

    iget-object v1, p0, Lbkw;->b:Lbls;

    invoke-static {v0, v1}, Lbkx;->a(Lbkf;Lbls;)V

    .line 307
    return-void
.end method

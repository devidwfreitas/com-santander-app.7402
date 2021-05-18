.class Lfee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfev;

.field final synthetic b:Lfec;


# direct methods
.method constructor <init>(Lfec;Lfev;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lfee;->b:Lfec;

    iput-object p2, p0, Lfee;->a:Lfev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lfee;->b:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    iget-object v1, p0, Lfee;->a:Lfev;

    invoke-virtual {v0, v1}, Lfej;->a(Lfev;)V

    .line 166
    return-void
.end method

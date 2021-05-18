.class Lbjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbiw;

.field final synthetic b:Lbjl;


# direct methods
.method constructor <init>(Lbjl;Lbiw;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lbjm;->b:Lbjl;

    iput-object p2, p0, Lbjm;->a:Lbiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lbjm;->a:Lbiw;

    iget-object v1, p0, Lbjm;->b:Lbjl;

    .line 80
    invoke-static {v1}, Lbjl;->a(Lbjl;)Lbiu;

    move-result-object v1

    iget-object v2, p0, Lbjm;->b:Lbjl;

    .line 81
    invoke-static {v2}, Lbjl;->b(Lbjl;)J

    move-result-wide v2

    iget-object v4, p0, Lbjm;->b:Lbjl;

    .line 82
    invoke-static {v4}, Lbjl;->c(Lbjl;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lbiw;->a(Lbiu;JJ)V

    .line 83
    return-void
.end method

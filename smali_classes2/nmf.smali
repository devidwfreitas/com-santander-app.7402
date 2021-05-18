.class public final Lnmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnne;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnne",
        "<TT;>;"
    }
.end annotation

.annotation build Lnlv;
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Lnne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnne",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lnmf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnmf;->a:Z

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnmf;->b:Ljava/lang/Object;

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lnne;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnne",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Lnmf;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lnmf;->c:Lnne;

    .line 71
    return-void
.end method

.method public static a(Lnne;Lnmg;)Lnmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnne",
            "<TT;>;",
            "Lnmg;",
            ")",
            "Lnmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Lnmf;

    .line 159
    invoke-static {p0}, Lnmd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnne;

    invoke-direct {v1, v0}, Lnmf;-><init>(Lnne;)V

    .line 160
    invoke-virtual {p1, v1}, Lnmg;->a(Lnmf;)V

    .line 161
    return-object v1
.end method

.method private d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 143
    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 79
    if-eqz v0, :cond_0

    sget-object v1, Lnmf;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 80
    monitor-enter p0

    .line 83
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 85
    monitor-exit p0

    .line 87
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lnmf;->d()Ljava/lang/Object;

    move-result-object v0

    .line 126
    if-nez v0, :cond_2

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lnmf;->d()Ljava/lang/Object;

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lnmf;->c:Lnne;

    invoke-interface {v0}, Lnne;->b()Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lnmf;->b:Ljava/lang/Object;

    .line 134
    :cond_0
    iput-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 136
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_2
    sget-object v1, Lnmf;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iput-object v0, p0, Lnmf;->d:Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lnmf;->e:Ljava/lang/ref/WeakReference;

    .line 105
    :cond_0
    monitor-exit p0

    .line 107
    :cond_1
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

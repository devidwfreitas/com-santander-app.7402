.class Lbrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbrk;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lbri;

.field private final c:Ljava/lang/Runnable;

.field private d:Lbrl;

.field private e:Lbrl;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-class v0, Lbri;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbrl;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lbri;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lbrl;->b:Lbri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lbrl;->c:Ljava/lang/Runnable;

    .line 143
    return-void
.end method


# virtual methods
.method a(Lbrl;)Lbrl;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-boolean v1, Lbrl;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbrl;->d:Lbrl;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 201
    :cond_0
    sget-boolean v1, Lbrl;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lbrl;->e:Lbrl;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_1
    if-ne p1, p0, :cond_2

    .line 204
    iget-object v1, p0, Lbrl;->d:Lbrl;

    if-ne v1, p0, :cond_3

    move-object p1, v0

    .line 211
    :cond_2
    :goto_0
    iget-object v1, p0, Lbrl;->d:Lbrl;

    iget-object v2, p0, Lbrl;->e:Lbrl;

    iput-object v2, v1, Lbrl;->e:Lbrl;

    .line 212
    iget-object v1, p0, Lbrl;->e:Lbrl;

    iget-object v2, p0, Lbrl;->d:Lbrl;

    iput-object v2, v1, Lbrl;->d:Lbrl;

    .line 213
    iput-object v0, p0, Lbrl;->e:Lbrl;

    iput-object v0, p0, Lbrl;->d:Lbrl;

    .line 215
    return-object p1

    .line 207
    :cond_3
    iget-object p1, p0, Lbrl;->d:Lbrl;

    goto :goto_0
.end method

.method a(Lbrl;Z)Lbrl;
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Lbrl;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrl;->d:Lbrl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_0
    sget-boolean v0, Lbrl;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbrl;->e:Lbrl;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_1
    if-nez p1, :cond_2

    .line 189
    iput-object p0, p0, Lbrl;->e:Lbrl;

    iput-object p0, p0, Lbrl;->d:Lbrl;

    move-object v0, p0

    .line 196
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    return-object p0

    .line 191
    :cond_2
    iput-object p1, p0, Lbrl;->d:Lbrl;

    .line 192
    iget-object v0, p1, Lbrl;->e:Lbrl;

    iput-object v0, p0, Lbrl;->e:Lbrl;

    .line 193
    iget-object v0, p0, Lbrl;->d:Lbrl;

    iget-object v1, p0, Lbrl;->e:Lbrl;

    iput-object p0, v1, Lbrl;->d:Lbrl;

    iput-object p0, v0, Lbrl;->e:Lbrl;

    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 196
    goto :goto_1
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lbrl;->f:Z

    .line 182
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lbrl;->b:Lbri;

    invoke-static {v0}, Lbri;->a(Lbri;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lbrl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lbrl;->b:Lbri;

    iget-object v2, p0, Lbrl;->b:Lbri;

    invoke-static {v2}, Lbri;->b(Lbri;)Lbrl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbrl;->a(Lbrl;)Lbrl;

    move-result-object v2

    invoke-static {v0, v2}, Lbri;->b(Lbri;Lbrl;)Lbrl;

    .line 150
    const/4 v0, 0x1

    monitor-exit v1

    .line 154
    :goto_0
    return v0

    .line 152
    :cond_0
    monitor-exit v1

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Z)V
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lbrl;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrl;->e:Lbrl;

    iget-object v0, v0, Lbrl;->d:Lbrl;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    sget-boolean v0, Lbrl;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbrl;->d:Lbrl;

    iget-object v0, v0, Lbrl;->e:Lbrl;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_1
    sget-boolean v0, Lbrl;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lbrl;->b()Z

    move-result v0

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lbrl;->f:Z

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lbrl;->b:Lbri;

    invoke-static {v0}, Lbri;->a(Lbri;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lbrl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lbrl;->b:Lbri;

    iget-object v2, p0, Lbrl;->b:Lbri;

    invoke-static {v2}, Lbri;->b(Lbri;)Lbrl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbrl;->a(Lbrl;)Lbrl;

    move-result-object v2

    invoke-static {v0, v2}, Lbri;->b(Lbri;Lbrl;)Lbrl;

    .line 162
    iget-object v0, p0, Lbrl;->b:Lbri;

    iget-object v2, p0, Lbrl;->b:Lbri;

    invoke-static {v2}, Lbri;->b(Lbri;)Lbrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lbrl;->a(Lbrl;Z)Lbrl;

    move-result-object v2

    invoke-static {v0, v2}, Lbri;->b(Lbri;Lbrl;)Lbrl;

    .line 164
    :cond_0
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lbrl;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method e()Lbrl;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lbrl;->d:Lbrl;

    return-object v0
.end method

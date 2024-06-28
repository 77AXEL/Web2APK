.class Landroidx/profileinstaller/ProfileVerifier$Cache;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# static fields
.field private static final SCHEMA:I = 0x1


# instance fields
.field final mInstalledCurrentProfileSize:J

.field final mPackageLastUpdateTime:J

.field final mResultCode:I

.field final mSchema:I


# direct methods
.method constructor <init>(IIJJ)V
    .locals 0
    .param p1, "schema"    # I
    .param p2, "resultCode"    # I
    .param p3, "packageLastUpdateTime"    # J
    .param p5, "installedCurrentProfileSize"    # J

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    .line 339
    iput p2, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 340
    iput-wide p3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 341
    iput-wide p5, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 342
    return-void
.end method

.method static readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 377
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v8, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 378
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 379
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 380
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 381
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 377
    return-object v8

    .line 376
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 346
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 347
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroidx/profileinstaller/ProfileVerifier$Cache;

    if-nez v2, :cond_1

    goto :goto_1

    .line 348
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 349
    .local v2, "cacheFile":Landroidx/profileinstaller/ProfileVerifier$Cache;
    iget v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    iget v4, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    iget-wide v5, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    iget v4, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    iget-wide v5, v2, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 347
    .end local v2    # "cacheFile":Landroidx/profileinstaller/ProfileVerifier$Cache;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 357
    iget v0, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 359
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 361
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeOnFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 367
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 368
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mSchema:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 369
    iget v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 371
    iget-wide v1, p0, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 373
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    return-void

    .line 367
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
